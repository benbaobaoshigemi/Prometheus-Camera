# EXIF InteroperabilityOffset 兼容修复

部分相机 JPEG 把 ExifIFD 放在缩略图之后，同时保留指向前部 Interop IFD 的 `0xA005`。小米相册的顺序 TIFF 解析器处理到后部 ExifIFD 后无法回读前部目标，最终以负 component count 中止解析。M3 的 essential tag `0x88B0=2` 因此不会进入相册的 1078 类型判定。

`M3Jpeg.tagExif()` 在两个位置检查最终指针方向：处理原 ExifIFD 时，以及为了插入 M3 tag 把 ExifIFD 克隆到 APP1 尾部之后。只有 `0xA005` 的目标位于当前 ExifIFD 之前时才删除该条目；仍然向前的有效 Interop 指针保留。删除在原目录内完成，后续条目和 next-IFD 字段前移 12 字节，其他 TIFF 数据、绝对偏移和 JPEG payload 不移动。

实测故障样本的 ExifIFD 为 12594、Interop 目标为 1761。修复后 `0xA005` 不再存在，`0x88B0=2` 保留，文件长度不变。邻近测试覆盖了：原本已经回退的指针、因 ExifIFD 克隆才变成回退的指针，以及始终保持向前的指针。最后一种情况继续保留 `0xA005`。

MediaEditor 能力类同时兼容当前发现的两个混淆名称：2.4.0.4.x 的 `mb.a$i` 和 2.4.0.5.x 的 `lb.a$i`。运行时只 hook 实际存在的类。
