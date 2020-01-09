def main(ctx):
    archs = ["amd64", "arm64", "arm"]

    pipelines = []

    for arch in archs:
        pipelines.append({
            "kind": "pipeline",
            "name": "build-linux-" + arch,
            "platform": {
                "os": "linux",
                "arch": arch
            },
            "steps": [
                {
                    "name": "test-build",
                    "image": "alpine:latest",
                    "commands": [
                        "echo Hello From Arch: $(arch)",
                        "echo Build Number: $DRONE_BUILD_NUMBER"
                    ]
                }
            ]
        })

    return pipelines
