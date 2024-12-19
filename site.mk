##		ffwy-site.mk

###########################################################################


##      DEFAULT_GLUON_RELEASE
#               version string to use for images
#               gluon relies on
#                       opkg compare-versions "$1" '>>' "$2"
#               to decide if a version is newer or not.

DEFAULT_GLUON_RELEASE := ffwy-v053


#       GLUON_RELEASE
#               call make with custom GLUON_RELEASE flag, to use your own release version scheme.
#               e.g.:
#                       $ make images GLUON_RELEASE=23.42+5
#               would generate images named like this:
#                       gluon-ff%site_code%-23.42+5-%router_model%.bin

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
# Region code required for some images; supported values: us eu
GLUON_REGION ?= eu

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= en de

GLUON_MULTIDOMAIN=0

# build images for deprecated devices (e.g. ar71xx-tiny)
GLUON_DEPRECATED ?= 0
