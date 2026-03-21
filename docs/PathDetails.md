####  [Table of Contents](TableOfContents.md) 
#### previous topic: [Paths Part 2](TangentsAndSlopes.md)  next topic:  [Colors One](Colors1.md)

## Path Details

**path** shapes are a new feature in SinterPixels 26.3.4

Each path has a set of anchor points, and each anchor point has a position and a tangent.  But you may be curious about how SinterPixels determines the exact arc that the path should take in between the points.

SinterPixels draws a cubic bezier curve from each point to the next. Cubic Bezier curves are defined by two control points in addition to the anchor points.  The position of the control points is determined as follows:

![image](../images/BezierSchematic.png "Determining the Bezier control points")

The two control points used are on the tangents of each anchor. The distance along the tangents is the same for both control points -- The distance is determined as a function of the distance between the anchors by this equation:

    D = S * sqrt(2) / 4
 
where S is the distance between A and B, and D is the distance between S and C1, and also the distance between B and C2.

An enhancement is planned for future versions for more precise placement of control points


#### previous topic: [Paths Part 2](TangentsAndSlopes.md)  next topic:  [Colors One](Colors1.md)
