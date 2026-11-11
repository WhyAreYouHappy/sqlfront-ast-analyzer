import { useRouter } from "next/router";

import { useAppDispatch, useAppSelector } from "@/shared/hooks/redux";
import { getQuestProgress } from "@/store/reducers/actions/quest-action";
import { questsSelectors } from "@/store/reducers/quests-slice";
import { isQuestId } from "@/shared/utils/is-quest-id";

import { useEffect } from "react";

export const useSceneData = () => {
  const router = useRouter();
  const { questId } = router.query;

  const dispatch = useAppDispatch();
  const quest = useAppSelector((state) => {
    if (!isQuestId(questId)) {
      return undefined;
    }

    return questsSelectors.selectById(state, questId);
  });

  useEffect(() => {
    if (!isQuestId(questId)) {
      return;
    }

    dispatch(getQuestProgress(questId));
  }, [dispatch, questId]);

  return quest;
  // return { 
  //   sceneData: quest.questNodes.find((node) => node.id === currentSceneId),
  //   databaseSchema: quest.databaseQuestSchemas.find((schema) => schema.id === currentSceneId),
  // };
};
