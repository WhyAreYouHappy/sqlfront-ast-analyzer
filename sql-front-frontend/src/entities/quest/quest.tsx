import { useEffect } from "react";
import { useRouter } from "next/router";

import { isQuestId } from "@/shared/utils/is-quest-id";

import { Scene } from "../quest-scene/scene";

export const Quest = () => {
  const router = useRouter();
  const { questId } = router.query;

  useEffect(() => {
    if (!router.isReady) {
      return;
    }

    if (!isQuestId(questId)) {
      router.replace("/quest");
      return;
    }

    //TODO: add recieving all quests ids and show quest menu to user
  }, [questId, router]);

  return (
    <Scene />
  );
};
