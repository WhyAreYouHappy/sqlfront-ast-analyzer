import type { Edge, Node } from "@xyflow/react";

export const databaseNodes: Node[] = [
  {
    id: "soldier",
    position: { x: -300, y: 200 },
    type: "databaseSchema",
    data: {
      label: "soldier",
      description: "сведения о военнослужащих",
      columns: [
        { title: "id", type: "bigint", description: "уникальный идентификатор" },
        { title: "full_name", type: "varchar", description: "полное имя" },
        { title: "birth_year", type: "integer", description: "год рождения" },
        { title: "gender", type: "varchar", description: "пол" },
        { title: "rank", type: "varchar", description: "воинское звание" },
        { title: "branch", type: "varchar", description: "род войск" },
        { title: "enlistment_city", type: "varchar", description: "город призыва" },
        { title: "enlistment_date", type: "date", description: "дата зачисления на службу" },
        { title: "status", type: "varchar", description: "текущий статус солдата" },
      ],
    },
  },
  {
    id: "soldier_medal",
    position: { x: -620, y: 0 },
    type: "databaseSchema",
    data: {
      label: "soldier_medal",
      description: "награждение солдат",
      columns: [
        { title: "award_date", type: "date", description: "дата награждения" },
        { title: "soldier_id", type: "bigint", description: "ссылка на солдата" },
        { title: "medal_id", type: "bigint", description: "ссылка на медаль" },
      ],
    },
  },
  {
    id: "medal",
    position: { x: -620, y: -300 },
    type: "databaseSchema",
    data: {
      label: "medal",
      description: "награды",
      columns: [
        { title: "id", type: "bigint", description: "уникальный идентификатор" },
        { title: "medal_name", type: "varchar", description: "название" },
        { title: "establishment_date", type: "date", description: "дата учреждения" },
        { title: "award_criteria", type: "text", description: "критерии награждения" },
      ],
    },
  },
  {
    id: "military_service",
    position: { x: 150, y: -100 },
    type: "databaseSchema",
    data: {
      label: "military_service",
      description: "служба солдат в подразделениях",
      columns: [
        { title: "id", type: "bigint", description: "уникальный идентификатор" },
        { title: "soldier_id", type: "bigint", description: "ссылка на солдата" },
        { title: "unit_id", type: "bigint", description: "сылка на подразделение" },
        { title: "start_date", type: "date", description: "дата начала службы" },
        { title: "end_date", type: "date", description: "дата конца службы" },
      ],
    },
  },
  {
    id: "military_unit",
    position: { x: 500, y: -100 },
    type: "databaseSchema",
    data: {
      label: "military_unit",
      description: "военные подразделения",
      columns: [
        { title: "id", type: "bigint", description: "уникальный идентификатор" },
        { title: "unit_name", type: "varchar", description: "название" },
        { title: "unit_type", type: "varchar", description: "тип подразделения" },
        { title: "location", type: "varchar", description: "местоположение" },
        { title: "formation_date", type: "date", description: "дата формирования" },
        { title: "combat_efficiency", type: "numeric", description: "боеспособность" },
      ],
    },
  },
  {
    id: "equipment",
    position: { x: 880, y: 100 },
    type: "databaseSchema",
    data: {
      label: "equipment",
      description: "военное снаряжение",
      columns: [
        { title: "id", type: "bigint", description: "уникальный идентификатор" },
        { title: "unit_id", type: "bigint", description: "ссылка на подразделение" },
        { title: "equipment_type", type: "varchar", description: "тип оборудования" },
        { title: "item_name", type: "varchar", description: "название предмета" },
        { title: "quantity", type: "integer", description: "количество" },
        { title: "last_replenishment", type: "date", description: "дата последнего пополнения" },
      ],
    },
  },
  {
    id: "equipment_assignment",
    position: { x: 300, y: 250 },
    type: "databaseSchema",
    data: {
      label: "equipment_assignment",
      description: "выдача оборудования солдатам",
      columns: [
        { title: "id", type: "bigint", description: "уникальный идентификатор" },
        { title: "soldier_id", type: "bigint", description: "ссылка на солдата" },
        { title: "equipment_id", type: "bigint", description: "ссылка на оборудование" },
        { title: "issue_date", type: "date", description: "дата выдачи" },
        { title: "quantity", type: "integer", description: "количество" },
      ],
    },
  },
  {
    id: "battle",
    position: { x: -500, y: 600 },
    type: "databaseSchema",
    data: {
      label: "battle",
      description: "бои и сражения",
      columns: [
        { title: "id", type: "bigint", description: "уникальный идентификатор" },
        { title: "battle_name", type: "varchar", description: "название битвы" },
        { title: "start_date", type: "date", description: "дата начала битвы" },
        { title: "end_date", type: "date", description: "дата окончания битвы" },
        { title: "location", type: "varchar", description: "место проведения" },
        { title: "result", type: "varchar", description: "итог битвы" },
        { title: "importance_level", type: "varchar", description: "уровень важности" },
      ],
    },
  },
  {
    id: "battle_enemy_unit",
    position: { x: -125, y: 700 },
    type: "databaseSchema",
    data: {
      label: "battle_enemy_unit",
      description: "выдача оборудования солдатам",
      columns: [
        { title: "battle_id", type: "bigint", description: "ссылка на битву" },
        { title: "enemy_unit_id", type: "bigint", description: "ссылка на вражеское подразделение" },
      ],
    },
  },
  {
    id: "enemy_unit",
    position: { x: 400, y: 650 },
    type: "databaseSchema",
    data: {
      label: "enemy_unit",
      description: "бои и сражения",
      columns: [
        { title: "id", type: "bigint", description: "уникальный идентификатор" },
        { title: "unit_name", type: "varchar", description: "название" },
        { title: "unit_type", type: "varchar", description: "тип подразделения" },
        { title: "commander", type: "varchar", description: "имя коммандира" },
        { title: "location", type: "date", description: "местоположение" },
        { title: "formation_date", type: "date", description: "дата формирования" },
        { title: "destruction_date", type: "date", description: "дата уничтожения" },
      ],
    },
  },
];

export const databaseEdges: Edge[] = [
  {
    id: "soldier-soldier_medal",
    source: "soldier_medal",
    target: "soldier",
    sourceHandle: "source:soldier_id",
    targetHandle: "target:id",
  },
  {
    id: "soldier_medal-medal",
    source: "medal",
    target: "soldier_medal",
    sourceHandle: "source:id",
    targetHandle: "target:medal_id",
  },
  {
    id: "soldier-military_service",
    source: "soldier",
    target: "military_service",
    sourceHandle: "source:id",
    targetHandle: "target:soldier_id",
  },
  {
    id: "military_service-military_unit",
    source: "military_service",
    target: "military_unit",
    sourceHandle: "source:unit_id",
    targetHandle: "target:id",
  },
  {
    id: "equipment-military_unit",
    source: "military_unit",
    target: "equipment",
    sourceHandle: "source:id",
    targetHandle: "target:unit_id",
  },
  {
    id: "equipment-equipment_assignment",
    source: "equipment_assignment",
    target: "equipment",
    sourceHandle: "source:equipment_id",
    targetHandle: "target:id",
  },
  {
    id: "soldier-equipment_assignment",
    source: "soldier",
    target: "equipment_assignment",
    sourceHandle: "source:id",
    targetHandle: "target:soldier_id",
  },
  {
    id: "battle-battle_enemy_unit",
    source: "battle",
    target: "battle_enemy_unit",
    sourceHandle: "source:id",
    targetHandle: "target:battle_id",
  },
  {
    id: "battle_enemy_unit-enemy_unit",
    source: "battle_enemy_unit",
    target: "enemy_unit",
    sourceHandle: "source:enemy_unit_id",
    targetHandle: "target:id",
  },
];
