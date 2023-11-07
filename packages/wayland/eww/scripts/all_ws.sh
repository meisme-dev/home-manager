#!/usr/bin/env bash

workspaces=$(swaymsg -rt get_workspaces)
echo $workspaces

swaymsg -rt subscribe '["workspace"]' --monitor | {
    while read -r event; do
      workspaces=$(swaymsg -rt get_workspaces)
      echo $workspaces
    done
}
