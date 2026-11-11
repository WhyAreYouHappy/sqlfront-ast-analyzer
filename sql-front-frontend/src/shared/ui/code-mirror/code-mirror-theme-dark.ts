import { EditorView } from "@codemirror/view";
import { Extension } from "@codemirror/state";
import { HighlightStyle, syntaxHighlighting } from "@codemirror/language";
import { tags as t } from "@lezer/highlight";

import { BLACK_COLOR, GRAY_DARK, GRAY_EXTRA_LIGHT, GRAY_LIGHT,  RED_COLOR, RED_DARK, RED_LIGHT, WHITE_COLOR, WHITE_DIM } from "../colors";

const customDarkTheme = EditorView.theme({
  "&": {
    color: WHITE_COLOR,
    backgroundColor: BLACK_COLOR,
  },
  ".cm-content": {
    caretColor: RED_COLOR,
    fontFamily: "monospace",
  },
  ".cm-cursor, .cm-dropCursor": { 
    borderLeftColor: RED_COLOR,
    borderLeftWidth: "2px",
  },
  "&.cm-focused > .cm-scroller > .cm-selectionLayer .cm-selectionBackground, .cm-selectionBackground, .cm-content ::selection": {
    backgroundColor: RED_DARK,
  },
  ".cm-activeLine": { 
    backgroundColor: "transparent",
  },
  ".cm-selectionMatch": { 
    backgroundColor: `${RED_DARK}80`,
  },
  "&.cm-focused .cm-matchingBracket, &.cm-focused .cm-nonmatchingBracket": {
    backgroundColor: RED_LIGHT,
    outline: `1px solid ${RED_COLOR}`,
  },
  ".cm-gutters": {
    backgroundColor: GRAY_DARK,
    color: GRAY_EXTRA_LIGHT,
    border: "none",
  },
  ".cm-activeLineGutter": {
    backgroundColor: GRAY_DARK,
    color: GRAY_EXTRA_LIGHT,
  },
  ".cm-foldPlaceholder": {
    backgroundColor: RED_DARK,
    border: `1px solid ${RED_COLOR}`,
    color: WHITE_DIM,
  },
  ".cm-tooltip": {
    border: `1px solid ${RED_COLOR}`,
    backgroundColor: BLACK_COLOR,
    color: GRAY_EXTRA_LIGHT,
  },
  ".cm-tooltip .cm-tooltip-arrow:before": {
    borderTopColor: RED_COLOR,
  },
  ".cm-tooltip .cm-tooltip-arrow:after": {
    borderTopColor: BLACK_COLOR,
  },
  ".cm-searchMatch": {
    backgroundColor: RED_DARK,
    outline: `1px solid ${RED_COLOR}`,
  },
  ".cm-searchMatch.cm-searchMatch-selected": {
    backgroundColor: RED_COLOR,
  },
}, { dark: true });

const customDarkHighlightStyle = HighlightStyle.define([
  { tag: t.keyword, color: RED_COLOR, fontWeight: "bold" },
  { tag: [t.name, t.deleted, t.character, t.propertyName, t.macroName],
    color: GRAY_EXTRA_LIGHT },
  { tag: [t.function(t.variableName), t.labelName],
    color: WHITE_DIM },
  { tag: [t.color, t.constant(t.name), t.standard(t.name)],
    color: RED_LIGHT },
  { tag: [t.definition(t.name), t.separator],
    color: GRAY_EXTRA_LIGHT },
  { tag: [t.typeName, t.className, t.number, t.changed, t.annotation,
    t.modifier, t.self, t.namespace],
    color: RED_LIGHT },
  { tag: [t.operator, t.operatorKeyword, t.url, t.escape, t.regexp,
    t.link, t.special(t.string)],
    color: RED_COLOR },
  { tag: [t.meta, t.comment],
    color: GRAY_LIGHT, fontStyle: "italic" },
  { tag: t.strong,
    fontWeight: "bold" },
  { tag: t.emphasis,
    fontStyle: "italic" },
  { tag: t.strikethrough,
    textDecoration: "line-through" },
  { tag: t.link,
    color: RED_LIGHT, textDecoration: "underline" },
  { tag: t.heading,
    fontWeight: "bold", color: RED_COLOR },
  { tag: [t.atom, t.bool, t.special(t.variableName)],
    color: RED_LIGHT },
  { tag: [t.processingInstruction, t.string, t.inserted],
    color: WHITE_DIM },
  { tag: t.invalid,
    color: WHITE_COLOR, backgroundColor: RED_COLOR },
]);

export const darkCodeMirrorTheme: Extension = [
  customDarkTheme,
  syntaxHighlighting(customDarkHighlightStyle),
];
