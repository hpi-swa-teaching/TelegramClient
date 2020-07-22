#!/usr/bin/env bash

# shellcheck source=coverage-utils.sh
# source "${SMALLTALK_CI_BUILD}/coverage-utils.sh"

readonly COVERALLS_API="https://coveralls.io/api/v1/jobs"
readonly coverage_results="/home/runner/.smalltalkCI/_builds/coveralls_results.json"
upload_status=0

if is_file "${coverage_results}"; then
  curl -s -F json_file="@${coverage_results}" "${COVERALLS_API}" > /dev/null || upload_status=$?
fi
