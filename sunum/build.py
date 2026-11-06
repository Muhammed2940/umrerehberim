import re,base64,sys,os
src,out=sys.argv[1],sys.argv[2]
h=open(src,encoding='utf8').read()
def rep(m):
    n=m.group(1); p='img/'+n
    if not os.path.exists(p): print('EKSIK',n); return m.group(0)
    mt='image/png' if n.endswith('.png') else 'image/jpeg'
    return 'data:%s;base64,%s'%(mt,base64.b64encode(open(p,'rb').read()).decode())
h=re.sub(r"img:([A-Za-z0-9_]+\.(?:jpg|png))",rep,h)
open(out,'w',encoding='utf8').write(h); print(out, round(len(h)/1e6,1),'MB')
