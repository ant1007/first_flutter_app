import 'package:flutter/material.dart';

class CustomWidget extends LeafRenderObjectWidget {
  const CustomWidget({super.key});

  @override
  RenderObject createRenderObject(BuildContext context) =>
      RenderCustomObject(); // 创建 RenderObject

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderObject renderObject) {
    // 更新 RenderObject
    super.updateRenderObject(context, renderObject);
  }
}

class RenderCustomObject extends RenderBox {
  @override
  void performLayout() {
    // 实现布局逻辑
    super.performLayout();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // 实现绘制
    super.paint(context, offset);
  }
}
