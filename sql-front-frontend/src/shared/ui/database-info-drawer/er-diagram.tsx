import { useEffect } from "react";
import { Background, BackgroundVariant, Controls, ReactFlow, useEdgesState, useNodesState } from "@xyflow/react";
import "@xyflow/react/dist/style.css";

import { ERDiagramType } from "@/shared/types/er-diagram-types";

import { DatabaseSchema } from "./database-schema";

const nodeTypes = { databaseSchema: DatabaseSchema };

export const ERDiagram = ({
  databaseNodes,
  databaseEdges,
}: ERDiagramType) => {
  const [nodes, setNodes, onNodesChange] = useNodesState(databaseNodes || []);
  const [edges, setEdges, onEdgesChange] = useEdgesState(databaseEdges || []);

  useEffect(() => {
    setNodes(databaseNodes || []);
    setEdges(databaseEdges || []);
  }, [databaseNodes, databaseEdges, setNodes, setEdges]);

  return (
    <ReactFlow
      nodes={nodes}
      edges={edges}
      onNodesChange={onNodesChange}
      onEdgesChange={onEdgesChange}
      nodeTypes={nodeTypes}
      proOptions={{ hideAttribution: true }}
      fitView
      fitViewOptions={{ padding: 0.4 }}
    >
      <Background variant={BackgroundVariant.Dots}/>
      <Controls showInteractive={false} />
    </ReactFlow>
  );
};
