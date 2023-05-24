//
//  HexagonParameters.swift
//  Landmarks
//
//  Created by bjke on 2023/5/24.
//

import CoreGraphics
/**
 这段代码定义了一个名为 `HexagonParameters` 的结构体，它包含一个名为 `Segment` 的嵌套结构体。`Segment` 结构体有三个 `CGPoint` 类型的属性：`line`、`curve` 和 `control`。这些属性表示六边形的线段、曲线和控制点。

 `HexagonParameters` 结构体还包含一个名为 `segments` 的静态数组，它包含六个 `Segment` 实例。这些实例表示六边形的六个顶点。每个顶点由一条线段、一条曲线和一个控制点组成。这些值表示六边形的形状和大小。

 以下是一个形象的表示：

 ```
   1
  / \
 6---2
 |   |
 5---3
  \ /
   4
 ```

 1. 第一个顶点（0.60, 0.05）到（0.40, 0.05），控制点（0.50, 0.00）
 2. 第二个顶点（0.05, 0.20）到（0.00, 0.30），控制点（0.00, 0.25）
 3. 第三个顶点（0.00, 0.70）到（0.05, 0.80），控制点（0.00, 0.75）
 4. 第四个顶点（0.40, 0.95）到（0.60, 0.95），控制点（0.50, 1.00）
 5. 第五个顶点（0.95, 0.80）到（1.00, 0.70），控制点（1.00, 0.75）
 6. 第六个顶点（1.00, 0.30）到（0.95, 0.20），控制点（1.00, 0.25）

 这些点和控制点用于绘制六边形的形状。

 */
struct HexagonParameters {
  struct Segment {
    let line: CGPoint
    let curve: CGPoint
    let control: CGPoint
  }

  static let adjustment: CGFloat = 0.085

  static let segments = [
    Segment(
      line: CGPoint(x: 0.60, y: 0.05),
      curve: CGPoint(x: 0.40, y: 0.05),
      control: CGPoint(x: 0.50, y: 0.00)
    ),
    Segment(
      line: CGPoint(x: 0.05, y: 0.20 + adjustment),
      curve: CGPoint(x: 0.00, y: 0.30 + adjustment),
      control: CGPoint(x: 0.00, y: 0.25 + adjustment)
    ),
    Segment(
      line: CGPoint(x: 0.00, y: 0.70 - adjustment),
      curve: CGPoint(x: 0.05, y: 0.80 - adjustment),
      control: CGPoint(x: 0.00, y: 0.75 - adjustment)
    ),
    Segment(
      line: CGPoint(x: 0.40, y: 0.95),
      curve: CGPoint(x: 0.60, y: 0.95),
      control: CGPoint(x: 0.50, y: 1.00)
    ),
    Segment(
      line: CGPoint(x: 0.95, y: 0.80 - adjustment),
      curve: CGPoint(x: 1.00, y: 0.70 - adjustment),
      control: CGPoint(x: 1.00, y: 0.75 - adjustment)
    ),
    Segment(
      line: CGPoint(x: 1.00, y: 0.30 + adjustment),
      curve: CGPoint(x: 0.95, y: 0.20 + adjustment),
      control: CGPoint(x: 1.00, y: 0.25 + adjustment)
    )
  ]
}
