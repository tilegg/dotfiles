from libqtile import layout

layouts = [
    layout.Columns(
        margin=[10, 10, 10, 10],
        border_focus='#1F1D2E',
        border_normal='#1F1D2E'
    ),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]
