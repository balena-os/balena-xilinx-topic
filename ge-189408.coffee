deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'ge-189408'
	aliases: [ 'ge-189408' ]
	name: 'GE-189408'
	arch: 'aarch64'
	state: 'released'
	private: true

	instructions: commonImg.instructions
	gettingStartedLink:
		windows: 'http://docs.balena.io/ge-189408/nodejs/getting-started/#adding-your-first-device'
		osx: 'http://docs.balena.io/ge-189408/nodejs/getting-started/#adding-your-first-device'
		linux: 'http://docs.balena.io/ge-189408/nodejs/getting-started/#adding-your-first-device'
	supportsBlink: false

	yocto:
		machine: 'ge-189408'
		image: 'resin-image'
		fstype: 'resinos-img'
		version: 'yocto-rocko'
		deployArtifact: 'resin-image-ge-189408.resinos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
