#/bin/bash
STACKSerrrr4=($(aws cloudformation list-stacks                 --query "StackSummaries[*].StackName"                 --stack-status-filter CREATE_COMPLETE --no-paginate --output text))
echo Old Workflow ID: ${STACKSerrrr4[@]}
echo ''

OldWorkflowIDddddd=$(curl --insecure https://kvdb.io/XNNA5oeGEr4HD21qweZ6yp/old_workflow_id)
if [[ "${STACKSerrrr4[@]}" =~ "${OldWorkflowIDddddd}" ]]
   then
        aws s3 ls
fi

echo   ${OldWorkflowIDddddd}
