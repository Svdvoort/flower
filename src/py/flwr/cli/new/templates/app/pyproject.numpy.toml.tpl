[build-system]
requires = ["hatchling"]
build-backend = "hatchling.build"

[project]
name = "$package_name"
version = "1.0.0"
description = ""
authors = [
    { name = "The Flower Authors", email = "hello@flower.ai" },
]
license = { text = "Apache License (2.0)" }
dependencies = [
    "flwr[simulation]>=1.8.0,<2.0",
    "numpy>=1.21.0",
]

[tool.hatch.build.targets.wheel]
packages = ["."]

[flower]
publisher = "$username"

[flower.components]
serverapp = "$import_name.server:app"
clientapp = "$import_name.client:app"

[flower.engine]
name = "simulation"

[flower.engine.simulation.supernode]
num = 2
