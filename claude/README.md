# claude-docker
run claude in docker

## usage
```bash
docker run -it -v $(pwd):/workspace \
--env ANTHROPIC_AUTH_TOKEN=$token \
--env ANTHROPIC_BASE_URL=$url \
--env ANTHROPIC_MODEL=$model \
--env ANTHROPIC_SMALL_FAST_MODEL=$fast_model \
--name $(basename $(pwd))-with-claude \
registry-crs-huadong1.ctyun.cn/7sunarni/claude:v3 \
claude
```
