def main(ctx):
    archs = ["amd64", "arm64", "arm"]

    pipelines = []

    for arch in archs:
        pipelines.append({
            "kind": "pipeline",
            "name": "build-linux-" + arch + "-" + ctx.build.id,
            "platform": {
                "os": "linux",
                "arch": arch
            },
            "steps": [
                {
                    "name": "test-build",
                    "image": "alpine:latest",
                    "commands": [
                        "echo Hello From Arch: $(arch)"
                    ]
                }
            ]
        })

    return pipelines
