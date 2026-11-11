import type { Edge, Node } from "@xyflow/react";

export const databaseNodes: Node[] = [
  {
    id: "decision",
    position: { x: 0, y: -200 },
    type: "databaseSchema",
    data: {
      label: "decision",
      description: "сюжетная развилка 1 Глава 4",
      sceneId: ["chapter_4"],
      columns: [
        { title: "result", type: "bigint" },
      ],
    },
  },
  {
    id: "decision_factory",
    position: { x: 400, y: -200 },
    type: "databaseSchema",
    data: {
      label: "decision_factory",
      sceneId: ["chapter_5_1"],
      description: "сюжетная развилка 2 глава 5.1 ",
      columns: [
        { title: "result", type: "bigint" },
      ],
    },
  },

  {
    id: "map",
    position: { x: 0, y: 0 },
    type: "databaseSchema",
    data: {
      label: "map",
      sceneId: ["chapter_1", "chapter_2"],
      description: "объекты города",
      columns: [
        { title: "id", type: "bigint" },
        { title: "name", type: "varchar" },
        { title: "description", type: "varchar" },
        { title: "coordinates", type: "varchar" },
        { title: "status", type: "varchar" },
      ],
    },
  },
  {
    id: "is_sensitive",
    position: { x: 300, y: 0 },
    type: "databaseSchema",
    data: {
      label: "is_sensitive",
      description: "важность объекта",
      sceneId: ["chapter_2"],
      columns: [
        { title: "id", type: "bigint" },
        { title: "importance", type: "integer" },
      ],
    },
  },
  {
    id: "critical_objects",
    position: { x: 600, y: 0 },
    type: "databaseSchema",
    data: {
      label: "critical_objects",
      description: "важность объекта",
      sceneId: ["chapter_1", "chapter_2", "chapter_3"],
      columns: [
        { title: "id", type: "bigint" },
        { title: "description", type: "varchar" },
      ],
    },
  },


  {
    id: "guards",
    position: { x: 0, y: 300 },
    type: "databaseSchema",
    data: {
      label: "guards",
      description: "охранники",
      sceneId: ["chapter_5_1_10_1"],
      columns: [
        { title: "guard_id", type: "bigint" },
        { title: "name", type: "varchar" },
        { title: "age", type: "bigint" },
        { title: "shift_id", type: "bigint" },
      ],
    },
  },
  {
    id: "shifts",
    position: { x: 300, y: 300 },
    type: "databaseSchema",
    data: {
      label: "shifts",
      description: "смены",
      sceneId: ["chapter_5_1_10_1"],
      columns: [
        { title: "shift_id", type: "bigint" },
        { title: "start_time", type: "date" },
        { title: "end_time", type: "date" },
        { title: "sector", type: "bigint" },
        { title: "status", type: "bigint" },
      ],
    },
  },

  {
    id: "explosives",
    position: { x: 600, y: 300 },
    type: "databaseSchema",
    data: {
      label: "explosives",
      description: "взрывчатка",
      sceneId: ["chapter_5_1_10_2"],
      columns: [
        { title: "item_id", type: "bigint" },
        { title: "name", type: "varchar" },
        { title: "type", type: "varchar" },
        { title: "weight", type: "bigint" },
        { title: "storage_id", type: "bigint" },
        { title: "volatile", type: "boolean" },
      ],
    },
  },
  {
    id: "storages",
    position: { x: 900, y: 300 },
    type: "databaseSchema",
    data: {
      label: "storages",
      description: "взрывчатка",
      sceneId: ["chapter_5_1_10_2"],
      columns: [
        { title: "storage_id", type: "bigint" },
        { title: "name", type: "varchar" },
        { title: "sector", type: "char" },
        { title: "security_level", type: "varchar" },
      ],
    },
  },

  {
    id: "routes",
    position: { x: 900, y: 0 },
    type: "databaseSchema",
    data: {
      label: "routes",
      description: "маршруты",
      sceneId: ["chapter_5_1_10_3"],
      columns: [
        { title: "route_id", type: "bigint" },
        { title: "start_sector", type: "char" },
        { title: "end_sector", type: "char" },
        { title: "distance_km", type: "bigint" },
        { title: "risk_level", type: "varchar" },
      ],
    },
  },
  {
    id: "checkpoints",
    position: { x: 1200, y: 0 },
    type: "databaseSchema",
    data: {
      label: "checkpoints",
      description: "блок-посты",
      sceneId: ["chapter_5_1_10_3"],
      columns: [
        { title: "checkpoint_id", type: "bigint" },
        { title: "sector", type: "char" },
        { title: "status", type: "varchar" },
        { title: "guard_strength", type: "bigint" },
      ],
    },
  },

  {
    id: "disguise_templates",
    position: { x: 0, y: 600 },
    type: "databaseSchema",
    data: {
      label: "disguise_templates",
      description: "шаблоны униформы",
      sceneId: ["chapter_5_1_10_5"],
      columns: [
        { title: "template_id", type: "bigint" },
        { title: "name", type: "varchar" },
        { title: "uniform_type", type: "varchar" },
        { title: "origin_country", type: "varchar" },
      ],
    },
  },
  {
    id: "disguises",
    position: { x: 300, y: 600 },
    type: "databaseSchema",
    data: {
      label: "disguises",
      description: "униформа",
      sceneId: ["chapter_5_1_10_5"],
      columns: [
        { title: "disguise_id", type: "bigint" },
        { title: "template_id", type: "bigint" },
        { title: "status", type: "varchar" },
        { title: "activation_date", type: "date" },
      ],
    },
  },

  {
    id: "items",
    position: { x: 600, y: 600 },
    type: "databaseSchema",
    data: {
      label: "items",
      description: "предметы в карманах",
      sceneId: ["chapter_5_1_20_1"],
      columns: [
        { title: "item_id", type: "bigint" },
        { title: "name", type: "varchar" },
        { title: "weight", type: "bigint" },
        { title: "is_self_defense", type: "boolean" },
        { title: "assigned_to", type: "varchar" },
      ],
    },
  },

  {
    id: "train_schedule",
    position: { x: 900, y: 600 },
    type: "databaseSchema",
    data: {
      label: "train_schedule",
      description: "расписание поездов",
      sceneId: ["chapter_5_2_1"],
      columns: [
        { title: "train_id", type: "bigint" },
        { title: "arrival_time", type: "date" },
        { title: "cargo_type", type: "varchar" },
        { title: "status", type: "varchar" },
      ],
    },
  },

  {
    id: "track_segments",
    position: { x: 1200, y: 600 },
    type: "databaseSchema",
    data: {
      label: "track_segments",
      description: "сегменты пути",
      sceneId: ["chapter_5_2_2"],
      columns: [
        { title: "segment_id", type: "bigint" },
        { title: "bridge", type: "varchar" },
        { title: "km_marker", type: "bigint" },
        { title: "status", type: "varchar" },
      ],
    },
  },
];

export const databaseEdges: Edge[] = [
  {
    id: "map-is_sensitive",
    source: "map",
    target: "is_sensitive",
    sourceHandle: "source:id",
    targetHandle: "target:id",
  },
  {
    id: "map-critical_objects",
    source: "map",
    target: "critical_objects",
    sourceHandle: "source:id",
    targetHandle: "target:id",
  },

  {
    id: "guards-shifts",
    source: "guards",
    target: "shifts",
    sourceHandle: "source:shift_id",
    targetHandle: "target:shift_id",
  },
  {
    id: "explosives-storages",
    source: "explosives",
    target: "storages",
    sourceHandle: "source:storage_id",
    targetHandle: "target:storage_id",
  },
  {
    id: "routes_start-checkpoints",
    source: "routes",
    target: "checkpoints",
    sourceHandle: "source:start_sector",
    targetHandle: "target:sector",
  },
  {
    id: "routes_end-checkpoints",
    source: "routes",
    target: "checkpoints",
    sourceHandle: "source:end_sector",
    targetHandle: "target:sector",
  },
  {
    id: "disguise_templates-disguises",
    source: "disguise_templates",
    target: "disguises",
    sourceHandle: "source:template_id",
    targetHandle: "target:template_id",
  },
];
