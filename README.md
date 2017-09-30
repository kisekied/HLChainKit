# HLChainKit

#### Description:
使用链式语法代替OC系统库里的一些冗长的语句，逐步更新中...

#### Sample：
Before:

``` objc
// original
[path moveToPoint:p1];
[path addLineToPoint:p2];
[path addLineToPoint:p3];
[path closePath];
```

After:

```objc
// current
path.moveTo(p1).lineTo(p2).lineTo(p3).close();
```

