"""Provisional reference only: NOT a fabrication or mounting design.

Legacy glass width/height are unmeasured. Thickness is a visualization
placeholder. No case rib geometry, tape, cover, holes or cable route is inferred.
See NOTES.md and 00_START_HERE/README_START_HERE.md.
"""
import cadquery as cq
from soma import add_part, param

PANEL_WIDTH = param(170.2, "Unverified panel width", min=160.0, max=190.0, unit="mm")
PANEL_HEIGHT = param(111.2, "Unverified panel height", min=100.0, max=130.0, unit="mm")
PANEL_THICKNESS = param(1.0, "Placeholder panel thickness", min=0.2, max=5.0, unit="mm")

panel = cq.Workplane("XY").box(
    PANEL_WIDTH, PANEL_HEIGHT, PANEL_THICKNESS, centered=(True, True, False)
)
add_part("Display envelope - UNVERIFIED", panel, color=(0.8, 0.8, 0.75), role="reference", alpha=0.75)
