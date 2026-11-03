"""Generate deterministic damaged PNG files from the release's valid fixture.

This is release-local and never touches a vendor tree, installed DLL or prior attempt.
"""
from pathlib import Path
import hashlib,json,struct

HERE=Path(__file__).resolve().parent/'codec-data'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
valid=HERE/'valid-control.png'
raw=valid.read_bytes()
assert raw.startswith(b'\x89PNG\r\n\x1a\n')
assert len(raw)>70

                                                                              
                                                                               
pos=8
idat=None
while pos+12<=len(raw):
    count=struct.unpack('>I',raw[pos:pos+4])[0]
    kind=raw[pos+4:pos+8]
    end=pos+12+count
    assert end<=len(raw)
    if kind==b'IDAT':
        idat=(pos,count,end)
        break
    pos=end
assert idat is not None and idat[1]>8
offset,n,end=idat
trunc=raw[:offset+8+max(6,n//2)]
assert len(trunc)<len(raw) and len(trunc)>offset+8
(HERE/'truncated-control.png').write_bytes(trunc)

                                                                            
                                                                        
crc_index=offset+8+n
changed=bytearray(raw)
changed[crc_index]^=0xA5
assert len(changed)==len(raw)
(HERE/'crc-error-control.png').write_bytes(changed)
                                                                          
short=raw[:16]
assert len(short)==16 and short.startswith(b'\x89PNG\r\n\x1a\n')
(HERE/'short-header-control.png').write_bytes(short)
report={'schema':'stage12-009-release-fixtures','fixtures':[
    {'file':x.name,'bytes':x.stat().st_size,'sha256':sha(x)}
    for x in sorted(HERE.glob('*.png'))]+[
    {'file':'valid-control.jpg','bytes':(HERE/'valid-control.jpg').stat().st_size,
     'sha256':sha(HERE/'valid-control.jpg')}],
    'png_truncation':'Truncated inside IDAT data, valid PNG signature and IHDR retained',
    'png_crc_damage':'First IDAT CRC byte changed; length and memory remain valid',
    'png_metadata_short_header':'16 actual readable bytes, genuine PNG signature, truncated IHDR',
    'external_downloads':False}
(HERE/'FIXTURES.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'created':True,'png_len':len(raw),'trunc_len':len(trunc),
                  'idat_crc_offset':crc_index,'files':len(report['fixtures'])}))
