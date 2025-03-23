REPO_ID="jchun/so100_pickplace_small_$(date +%Y%m%d_%H%M%S)"
echo "Save to: ${REPO_ID}"
python lerobot/scripts/control_robot.py \
  --robot.type=so100 \
  --control.type=record \
  --control.single_task="Grasp items from white bowl and place in black tray" \
  --control.fps=30 \
  --control.repo_id=${REPO_ID} \
  --control.tags='["pickplace", "seeed_hacks"]' \
  --control.warmup_time_s=5 \
  --control.episode_time_s=120 \
  --control.reset_time_s=30 \
  --control.num_episodes=400 \
  --control.push_to_hub=true