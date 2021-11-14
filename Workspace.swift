import ProjectDescription

let workspace = Workspace(
	name: "ForecastApp",
	projects: [
        .relativeToManifest("App")
	]
)
