import ProjectDescription

private let bungleId: String = "SFX-Montage.MdEditor"
private let version: String = "0.0.1"
private let bungleVersion: String = "1"
private let iOSTargetVersion: String = "16.2"

let project = Project(
	name: "MdEditor",
	packages: [],
	targets: [
		Target(
			name: "MdEditor",
			platform: .iOS,
			product: .app,
			bundleId: bungleId,
			deploymentTarget: .iOS(targetVersion: iOSTargetVersion, devices: .iphone),
			infoPlist: .default,
			sources: ["Sources/**"],
			resources: ["Resources/**"],
			scripts: scripts
		)
	],
	additionalFiles: [
		"README.md"
	])

// Local script loaded
private var scripts: [TargetScript] {
	var scripts = [TargetScript]()
	// swiftlint:disable:next line_length
	let swiftLintScriptString = "export PATH='$PATH:/opt/homebrew/bin' if which swiftlint > /dev/null; then swiftlint else echo 'warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint' exit 1 fi"
	// swiftlint:enable:next line_length
	let swiftLintScript = TargetScript.post(
				script: swiftLintScriptString, name: "SwiftLint"
	)

	scripts.append(swiftLintScript)
	return scripts
}
