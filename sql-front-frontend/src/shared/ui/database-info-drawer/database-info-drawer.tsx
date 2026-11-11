import { useMemo } from "react";

import { Drawer, DrawerProps } from "@/shared/ui/drawer/drawer";
import { Title } from "@/shared/ui/title/title";
import { ERDiagramType } from "@/shared/types/er-diagram-types";

import { ERDiagram } from "./er-diagram";

export const DatabaseInfoDrawer = ({
  isOpen,
  onClose,
  databaseEdges,
  databaseNodes,
  sceneId,
}:  DrawerProps & ERDiagramType & { sceneId?: string }) => {
  const shownDatabaseNodes = useMemo(() => {
    if (!databaseNodes) {
      return;
    }

    return sceneId
      ? databaseNodes.filter(({ data }) => Array.isArray(data.sceneId) && data.sceneId?.includes(sceneId))
      : databaseNodes;
  }, [sceneId, databaseNodes]);

  return (
    <Drawer
      isOpen={isOpen}
      onClose={onClose}
      width="60vw"
      padding="4vw 2vw 5vw 4vw"
    >
      <Title
        as="p"
        size="5vw"
        color="red"
        margin="0 0 1vw"
      >
        схема базы данных
      </Title>
      <ERDiagram
        databaseNodes={shownDatabaseNodes}
        databaseEdges={databaseEdges}
      />
    </Drawer>
  );
};
