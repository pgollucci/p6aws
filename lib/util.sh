P6_AWS_JQ_TAG_NAME="Tags[?Key==\`Name\`].Value | [0]"

######################################################################
#<
#
# Function:
#      = p6_aws_util_cli_qload()
#
#
#
#>
######################################################################
p6_aws_util_cli_qload() {
    local svc="$1"

    . $P6_DFZ_SRC_DIR/p6m7g8/p6common/lib/io.sh
    . $P6_DFZ_SRC_DIR/p6m7g8/p6common/lib/debug.sh
    . $P6_DFZ_SRC_DIR/p6m7g8/p6common/lib/file.sh
    . $P6_DFZ_SRC_DIR/p6m7g8/p6common/lib/dir.sh

    p6_aws_util_include_service "$svc"
}

######################################################################
#<
#
# Function:
#      = p6_aws_util_include_service(service)
#
# Arg(s):
#    service - 
#
#
#>
######################################################################
p6_aws_util_include_service() {
    local service="$1"

    local dir
    local base=$P6_DFZ_SRC_DIR/p6m7g8/p6aws/lib
    for dir in  api uw svc; do
	local pdir="$base/$dir/$service"
	p6_dir_load "$pdir"
    done
}

######################################################################
#<
#
# Function:
#      = p6_aws_util_account_alias_to_id(account_alias, map)
#
# Arg(s):
#    account_alias - 
#    map - 
#
#
#>
######################################################################
p6_aws_util_account_alias_to_id() {
    local account_alias="$1"
    local map="$2"

    p6_json_value_2_key "$account_alias" "$map"
}

######################################################################
#<
#
# Function:
#      = p6_aws_util_nicks(org, map)
#
# Arg(s):
#    org - 
#    map - 
#
#
#>
######################################################################
p6_aws_util_nicks() {
    local org="$1"
    local map="$2"

    local type="aws"

    awk -v k=$org '$2 ~ k { print $2 }' < $map | sed -e 's,["],,g' | xargs | sed -e 's, ,,g' -e "s,$org,${type}-${org},g"
}

######################################################################
#<
#
# Function:
#      = p6_aws_util_account_map(account_id, account_alias, map)
#
# Arg(s):
#    account_id - 
#    account_alias - 
#    map - 
#
#
#>
######################################################################
p6_aws_util_account_map() {
    local account_id="$1"
    local account_alias="$2"
    local map="$3"

    p6_file_line_delete_last "$map"
    p6_file_repalce "$map" '$s/$/,/'
    p6_file_append "$map" " \"$account_id\": \"$account_alias\""
    p6_file_append "$map" "}"
}

######################################################################
#<
#
# Function:
#      = p6_aws_util_region_for_profile_from_cred_file(profile, cred_file)
#
# Arg(s):
#    profile - 
#    cred_file - 
#
#
#>
######################################################################
p6_aws_util_region_for_profile_from_cred_file() {
    local profile="$1"
    local cred_file="$2"

    grep -A 5 $profile $cred_file | awk '/region/ { print $3 }'
}

######################################################################
#<
#
# Function:
#      = p6_aws_util_template_process(infile)
#
# Arg(s):
#    infile - 
#
#
#>
######################################################################
p6_aws_util_template_process() {
    local infile="$1"
    shift 1

    p6_template_process "$P6_DFZ_SRC_DIR/p6m7g8/p6aws/tmpl/$infile" "$@"
}