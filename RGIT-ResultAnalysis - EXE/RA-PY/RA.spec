# -*- mode: python ; coding: utf-8 -*-

block_cipher = None


a = Analysis(['RA.py'],
             pathex=['C:\\Users\\NitishTalekar\\Desktop\\RGIT-ResultAnalysis\\RA-PY'],
             binaries=[],
             datas=[],
             hiddenimports=[],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher,
             noarchive=False)
a.datas += [('RGIT.png','C:\\Users\\NitishTalekar\\Desktop\\RGIT-ResultAnalysis\\RA-PY\\medias\\RGIT.png', "DATA")]
pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts,
          a.binaries,
          a.zipfiles,
          a.datas,
          [],
          name='RA',
          debug=False,
          bootloader_ignore_signals=False,
          strip=False,
          upx=True,
          upx_exclude=[],
          runtime_tmpdir=None,
          console=False )
