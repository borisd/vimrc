import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import qualified XMonad.StackSet as W
import XMonad.Layout.NoBorders

main = xmonad $ defaultConfig {
        manageHook = manageDocks <+> manageHook defaultConfig,
        --layoutHook = avoidStruts  $  layoutHook defaultConfig,
        layoutHook = smartBorders (layoutHook defaultConfig),
        modMask = mod4Mask,
        terminal = "urxvt"
        }

myManageHooks = composeAll [ isFullscreen --> doFullFloat ]
