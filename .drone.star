def main(ctx):
    return [
        {
            "kind": "pipeline",
            "name": "build-1",
            "steps": [
                {
                    "name": "test-build",
                    "image": "alpine:latest",
                    "commands": [
                        "echo Hello World 1"
                    ]
                }
            ]
        },
        {
            "kind": "pipeline",
            "name": "build-2",
            "steps": [
                {
                    "name": "test-build",
                    "image": "alpine:latest",
                    "commands": [
                        "echo Hello World 2"
                    ]
                }
            ]
        }
    ]