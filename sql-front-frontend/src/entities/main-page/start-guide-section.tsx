import CodeMirror from "@uiw/react-codemirror";
import { sql } from "@codemirror/lang-sql";
import { Title } from "@/shared/ui/title/title";
import { Text } from "@/shared/ui/text/text";

import styles from "./start-guide-section.module.scss";

import { lightCodeMirrorTheme } from "@/shared/ui/code-mirror/code-mirror-theme-light";

export const StartGuideSection = ({ id }: { id: string }) => {
  return (
    <section id={id}>
      <div className={styles.startGuideSection}>
        <Title
          size="18.5vw"
          color="white"
          as="h3"
          padding="10vw 0 0 1vw"
        >
          Как начать?
        </Title>
        <Text
          size="1.5vw"
          color="white"
          width="51vw"
          margin="8vw 0 0 2vw"
        >
          Вам предстоит пройти три миссии, каждая из которых отличается уровнем сложности. Чем больше задач вы решите, тем больше баллов и достижений получите — а значит, подниметесь выше в рейтинге
        </Text>
        <Text
          size="2vw"
          color="white"
          margin="8vw 0 0 30vw"
        >
          Во время решения вы можете воспользоваться подсказками:
        </Text>
        <Text
          size="1.5vw"
          color="white"
          margin="3vw 0 0 30vw"
          lineHeight="2vw"
        >
          <span className={styles.listElement}>Стоимость первой подсказки — от 10 до 50 баллов (в зависимости от сложности задачи) </span>
          <span className={styles.listElement}>Штраф за просмотр ожидаемого результата — от 20 до 100 баллов</span>
        </Text>
      </div>
      <div className={styles.startGuideSection}>
        <Text
          size="3vw"
          color="white"
          padding="10vw 0 0 2vw"
        >
          Будьте внимательны!
        </Text>
        <Text
          size="1.5vw"
          color="white"
          lineHeight="2vw"
          margin="3vw 0 0 2vw"
        >
          <span className={styles.displayBlock}>За правильное решение задачи вы получаете от 100 до 500 баллов, в зависимости от миссии </span>
          <span className={styles.displayBlock}>За неправильное решение — теряете от 10 до 50 баллов</span>
        </Text>
        <div className={styles.codeBlock}>
          <CodeMirror
            className={styles.exampleCode}
            theme={lightCodeMirrorTheme}
            value=
{`SELECT ф.название_фронта, в.вид_войск, COUNT(г.герой_id) AS количество_героев, 
  AVG(г.уровень_подвига) AS средний_подвиг
FROM герои г
  JOIN фронты ф ON г.фронт_id = ф.фронт_id
  JOIN войска в ON г.войска_id = в.войска_id
WHERE г.награда = 'Орден Победы'
  GROUP BY ф.название_фронта, в.вид_войск
  ORDER BY средний_подвиг DESC;`}
            extensions={[sql()]}
            editable={false}
          />
        </div>
       <div
        className={styles.textScrolling}
       >
          <Title
            as="p"
            size="3.8vw"
            color="white"
          >
            Присоединяйтесь к «Битве за данные». <br></br>Учитесь. Боритесь. Побеждайте.
          </Title>
       </div>
      </div>
    </section>
  );
};
