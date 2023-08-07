# app_pack_dmg
macos App 打包成 dmg文件，通过目录和shell脚本实现


# 命令

# Dir
```
tree -L 2
.
├── LICENSE
├── README.md
├── pack_dmg.sh
├── source # App dir
│   ├── Applications -> /Applications
│   └── myPlayer.app # app
└── target # dmg dir
    ├── myPlayer_universal_v1.0.1.dmg
    └── myPlayer_universal_v1.0.1.dmg.md5
```

## help

```
lsmiao@lsmiaodeMBP app_pack_dmg % ./pack_dmg.sh
Help:
pack_xxxx.sh v0.0.x appname [arm64|x86_64]-- must have version!

```
## pack 1
```
./pack_dmg.sh v1.0.1 myPlayer
..................................................................................................................
created: app_pack_dmg/target/myPlayer_universal_v1.0.1.dmg

```

## pack 2

```
./pack_dmg.sh v1.0.1 myPlayer arm64
..................................................................................................................
created: app_pack_dmg/target/myPlayer_arm64_v1.0.1.dmg
```

