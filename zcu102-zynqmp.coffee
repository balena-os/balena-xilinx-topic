deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'zcu102-zynqmp'
	aliases: [ 'zcu102-zynqmp' ]
	name: 'Xilinx ZynqMP ZCU102'
	arch: 'aarch64'
	state: 'released'

	instructions: commonImg.instructions
	gettingStartedLink:
		windows: 'http://docs.balena.io/zcu102-zynqmp/nodejs/getting-started/#adding-your-first-device'
		osx: 'http://docs.balena.io/zcu102-zynqmp/nodejs/getting-started/#adding-your-first-device'
		linux: 'http://docs.balena.io/zcu102-zynqmp/nodejs/getting-started/#adding-your-first-device'
	supportsBlink: false

	yocto:
		machine: 'zcu102-zynqmp'
		image: 'resin-image'
		fstype: 'resinos-img'
		version: 'yocto-rocko'
		deployArtifact: 'resin-image-zcu102-zynqmp.resinos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
