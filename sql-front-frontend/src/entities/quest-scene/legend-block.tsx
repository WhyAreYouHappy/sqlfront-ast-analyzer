import cn from "classnames";
import { useCallback, useEffect, useMemo, useState } from "react";

import { Text } from "@/shared/ui/text/text";

import styles from "./legend-block.module.scss";

const SEPARATOR = ". ";

type LegendBlockType = {
  text: string;
  onEnds: () => void;
};

const LastSymbol = ({
  isAnimating,
  isLastSentence,
}: {
  isAnimating: boolean;
  isLastSentence: boolean;
}) => {
  if (isAnimating) {
    return <span className={styles.cursor}>▌</span>;
  }
  if (isLastSentence) {
    return <span className={styles.arrow}>▶</span>;
  }
  return <span className={cn(styles.cursor, styles.cursorBlink)}>▌</span>;
};

export const LegendBlock = ({
  text,
  onEnds,
}: LegendBlockType) => {
  const [sentenceIndex, setSentenceIndex] = useState(0);
  const [charIndex, setCharIndex] = useState(0);
  const [isAnimating, setIsAnimating] = useState(true);

  const sentences = useMemo(() => text?.split(SEPARATOR), [text]);

  const shownText = [
    ...sentences.slice(0, sentenceIndex),
    sentences[sentenceIndex].slice(0, charIndex),
  ].join(SEPARATOR);

  useEffect(() => {
    if (!isAnimating) {
      return;
    }

    const currentSentence = sentences[sentenceIndex];

    if (charIndex >= currentSentence.length) {
      setIsAnimating(false);
      return;
    }

    const timeout = setTimeout(() => {
      setCharIndex((prev) => prev + 1);
    }, 30);

    return () => clearTimeout(timeout);
  }, [sentences, sentenceIndex, isAnimating, charIndex]);

  const handleClick = useCallback(() => {
    if (isAnimating) {
      setCharIndex(sentences[sentenceIndex].length);
      setIsAnimating(false);
      return;
    }

    if (sentenceIndex === sentences.length - 1) {
      onEnds();
      return;
    }

    setSentenceIndex((prev) => prev + 1);
    setCharIndex(0);
    setIsAnimating(true);
  }, [isAnimating, sentenceIndex, sentences, onEnds]);

  useEffect(() => {
    const handleKeyDown = (event: KeyboardEvent) => {
      if (event.code === "Enter" || event.code === "Space") {
        event.preventDefault();
        handleClick();
      }
    };

    window.addEventListener("click", handleClick);
    window.addEventListener("keydown", handleKeyDown);

    return () => {
      window.removeEventListener("click", handleClick);
      window.removeEventListener("keydown", handleKeyDown);
    };
  }, [handleClick]);

  return (
    <div
      className={styles.legendContainer}
      onClick={handleClick}
    >
      <Text
        color="grayMid"
      >
        {shownText}
        <LastSymbol
          isAnimating={isAnimating}
          isLastSentence={sentenceIndex === sentences.length - 1}
        />
      </Text>
    </div>
  );
};
