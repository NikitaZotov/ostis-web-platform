#!/usr/bin/env bash
set -eo pipefail

ROOT_PATH=$(cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && cd .. && pwd)

export PLATFORM_PATH="${PLATFORM_PATH:-${ROOT_PATH}}"

export CONFIG_PATH="${CONFIG_PATH:-${PLATFORM_PATH}/ostis-web-platform.ini}"
export REPO_PATH="${REPO_PATH:-${PLATFORM_PATH}/repo.path}"

export SC_MACHINE_REPO="${SC_MACHINE_REPO:-https://github.com/ostis-ai/sc-machine.git}"
export SC_MACHINE_BRANCH="${SC_MACHINE_BRANCH:-main}"
export SC_MACHINE_COMMIT="${SC_MACHINE_COMMIT:-"b31f0bcb2fb07d9c4e1551b1eafc329f9f1384a5"}"
export SC_MACHINE_PATH="${SC_MACHINE_PATH:-${PLATFORM_PATH}/sc-machine}"

export SCP_MACHINE_REPO="${SCP_MACHINE_REPO:-https://github.com/ostis-ai/scp-machine.git}"
export SCP_MACHINE_BRANCH="${SCP_MACHINE_BRANCH:-main}"
export SCP_MACHINE_COMMIT="${SCP_MACHINE_COMMIT:-""}"
export SCP_MACHINE_PATH="${SCP_MACHINE_PATH:-${PLATFORM_PATH}/scp-machine}"

export SC_COMPONENT_MANAGER_REPO="${SC_COMPONENT_MANAGER_REPO:-https://github.com/ostis-ai/sc-component-manager.git}"
export SC_COMPONENT_MANAGER_BRANCH="${SC_COMPONENT_MANAGER_BRANCH:-main}"
export SC_COMPONENT_MANAGER_COMMIT="${SC_COMPONENT_MANAGER_COMMIT:-""}"
export SC_COMPONENT_MANAGER_PATH="${SC_COMPONENT_MANAGER_PATH:-${PLATFORM_PATH}/sc-component-manager}"

export SC_WEB_REPO="${SC_WEB_REPO:-https://github.com/ostis-ai/sc-web.git}"
export SC_WEB_BRANCH="${SC_WEB_BRANCH:-0.8.1-Unlock}"
export SC_WEB_COMMIT="${SC_WEB_COMMIT:-""}"
export SC_WEB_PATH="${SC_WEB_PATH:-${PLATFORM_PATH}/interface/sc-web}"

export IMS_KB_REPO="${IMS_KB_REPO:-https://github.com/ostis-ai/ims.ostis.kb.git}"
export IMS_KB_BRANCH="${IMS_KB_BRANCH:-0.3.0}"
export IMS_KB_COMMIT="${IMS_KB_COMMIT:-""}"
export IMS_KB_PATH="${IMS_KB_PATH:-${PLATFORM_PATH}/kb/ims.ostis.kb}"

if [ -d "${SC_MACHINE_PATH}" ];
then
  source "${SC_MACHINE_PATH}/scripts/set_vars.sh"
fi

if [ -d "${SCP_MACHINE_PATH}" ];
then
  source "${SCP_MACHINE_PATH}/scripts/set_vars.sh"
fi

if [ -d "${SC_COMPONENT_MANAGER_PATH}" ];
then
  source "${SC_COMPONENT_MANAGER_PATH}/scripts/set_vars.sh"
fi

if [ -d "${SC_WEB_PATH}" ];
then
  source "${SC_WEB_PATH}/scripts/set_vars.sh"
fi
