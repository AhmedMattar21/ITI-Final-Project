export OLD_WORKFLOW_ID=abcw3
echo "Old Workflow ID: $OLD_WORKFLOW_ID"
curl https://kvdb.io/${KVDB_BUCKET}/old_workflow_id2 -d ${OLD_WORKFLOW_ID}
echo "should be set on kv"

OldWorkflowID=$(curl https://kvdb.io/${KVDB_BUCKET}/old_workflow_id2)
CurrentWorkflowID=${CIRCLE_WORKFLOW_ID:0:7}
echo "DEBUG=$OldWorkflowID"
echo "DEBUG2=" $OldWorkflowID
