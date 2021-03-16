# shellcheck shell=bash
######################################################################
#<
#
# Function: words profiles = p6_aws_alfred_profiles_list(org)
#
#  Args:
#	org -
#
#  Returns:
#	words - profiles
#
#>
######################################################################
p6_aws_alfred_profiles_list() {
  local org="$1"

  local profiles
  local conf_file="$HOME/.aws/config-$org"
  if p6_file_exists "$conf_file" && p6_file_contains '^\[profile ' "$conf_file"; then
    # SSS: shell
    profiles=$(grep '^\[profile ' "$conf_file" |
      sed -e 's,\[profile ,,' -e 's,\],,' -e "s,$org+,," |
      grep -v default |
      sort)
  fi

  p6_return_words "$profiles"
}

######################################################################
#<
#
# Function: str json = p6_aws_alfred_profiles_to_alred_items(org, ...)
#
#  Args:
#	org -
#	... - profiles
#
#  Returns:
#	str - json
#
#>
######################################################################
p6_aws_alfred_profiles_to_alred_items() {
  local org="$1"
  shift 1 # profiles

  local json
  for profile in "$@"; do
    local uid="$profile"
    local title="$profile"
    local icon="{\"path\": \"icon.png\" }"
    local autocomplete="$profile"
    local arg="${org}+${profile}"

    local element
    element=$(
      p6_aws_template_process afred/element.json
      "UID=$uid"
      "TITLE=$title"
      "ARG=$arg"
      "ICON=$icon"
      "AUTOCOMPLETE=$autocomplete"
    )

    json=$(p6_string_append "$json" "$element" ",")
  done

  json="{\"items\": [$json]}"

  p6_return_str "$json"
}
