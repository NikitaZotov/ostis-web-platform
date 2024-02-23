#!/usr/bin/env bash
set -eo pipefail

CURRENT_DIR=$(cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)
source "${CURRENT_DIR}/formats.sh"

stage "Build ostis-web-platform"

"${CURRENT_DIR}/build_sc_machine.sh"

"${CURRENT_DIR}/build_sc_component_manager.sh"

stage "OSTIS-web-platform built successfully"
