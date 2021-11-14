import ProjectDescription

let deploymentTarget: DeploymentTarget = .iOS(targetVersion: "13.0", devices: [.iphone])

let dependencies: [TargetDependency] = []

let project = Project(
	name: "ForecastApp",
	organizationName: "mateussousa",
	targets: [
		Target(
			name: "ForecastApp",
			platform: .iOS,
			product: .app,
			bundleId: "com.mateussousa",
			infoPlist: "Configurations/Info.plist",
            sources: ["Sources/**"]
		)
	],
	schemes: [
		Scheme(
			name: "ForecastApp",
			shared: true,
			buildAction: BuildAction(targets: ["ForecastApp"]),
			testAction: nil,
			runAction: RunAction(executable: "ForecastApp")
		)
	]
)
