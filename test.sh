OldWorkflowID=$(curl https://kvdb.io/${KVDB_BUCKET}/old_workflow_id)
CurrentWorkflowID=${CIRCLE_WORKFLOW_ID:0:7}
echo "DEBUG=$OldWorkflowID"
echo "DEBUG2=" $OldWorkflowID
