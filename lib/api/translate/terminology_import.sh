######################################################################
#<
#
# Function:
#      = p6_aws_translate_terminology_import(name, merge_strategy, data_file)
#
# Arg(s):
#    name - 
#    merge_strategy - 
#    data_file - 
#
#
#>
######################################################################
p6_aws_translate_terminology_import() {
    local name="$1"
    local merge_strategy="$2"
    local data_file="$3"
    shift 3

    p6_run_write_cmd aws translate import-terminology --name $name --merge-strategy $merge_strategy --data-file $data_file "$@"
}