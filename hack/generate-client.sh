#!/usr/bin/env bash
set -eo pipefail

if [ -L $0 ]
then
    ROOT=$(realpath -e $(dirname $(readlink -e $0))/..)
else
    ROOT=$(realpath -e $(dirname $0)/..)
fi

SPEC=${SPEC:-https://dl.umschlag.tech/openapi/1.0.0-alpha1.yml}

docker run --rm \
	-v ${ROOT}:/generate \
	openapitools/openapi-generator-cli:v4.0.0 \
	generate \
	-c /generate/openapi.yml \
	-g ruby \
	--git-repo-id umschlag-ruby \
	--git-user-id umschlag \
	--http-user-agent umschlag-ruby/\#{VERSION} \
	-i ${SPEC} \
	-o /generate \
	-t /generate/hack/openapi/templates \
	--strict-spec true
