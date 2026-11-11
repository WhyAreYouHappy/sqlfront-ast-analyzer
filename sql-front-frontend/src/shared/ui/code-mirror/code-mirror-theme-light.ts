import { EditorView } from "@codemirror/view";
import { Extension } from "@codemirror/state";
import { HighlightStyle, syntaxHighlighting } from "@codemirror/language";
import { tags as t } from "@lezer/highlight";


import { BLACK_COLOR, BLACK_SOFT, GRAY_DARK, GRAY_MID, GRAY_MORE_LIGHT, RED_COLOR, RED_DARK, RED_LIGHT, WHITE_COLOR } from "../colors";

const customLightTheme = EditorView.theme({
  "&": {
    color: BLACK_COLOR,
    backgroundColor: WHITE_COLOR,
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
    backgroundColor: `${RED_LIGHT}40`,
  },
  ".cm-activeLine": {
    backgroundColor: "transparent",
  },
  ".cm-selectionMatch": { 
    backgroundColor: `${RED_LIGHT}30`,
  },
  "&.cm-focused .cm-matchingBracket, &.cm-focused .cm-nonmatchingBracket": {
    backgroundColor: `${RED_LIGHT}50`,
    outline: `1px solid ${RED_COLOR}`,
  },
  ".cm-gutters": {
    backgroundColor: GRAY_MORE_LIGHT,
    color: GRAY_DARK,
    border: "none",
    borderRight: `1px solid ${GRAY_MID}`,
  },
  ".cm-activeLineGutter": {
    backgroundColor: GRAY_MID,
    color: BLACK_COLOR,
  },
  ".cm-foldPlaceholder": {
    backgroundColor: GRAY_MORE_LIGHT,
    border: `1px solid ${RED_COLOR}`,
    color: BLACK_COLOR,
  },
  ".cm-tooltip": {
    border: `1px solid ${GRAY_MID}`,
    backgroundColor: WHITE_COLOR,
    color: BLACK_COLOR,
    boxShadow: "0 2px 8px rgba(57, 57, 57, 0.15)",
  },
  ".cm-tooltip .cm-tooltip-arrow:before": {
    borderTopColor: GRAY_MID,
  },
  ".cm-tooltip .cm-tooltip-arrow:after": {
    borderTopColor: WHITE_COLOR,
  },
  ".cm-searchMatch": {
    backgroundColor: `${RED_LIGHT}40`,
    outline: `1px solid ${RED_COLOR}`,
  },
  ".cm-searchMatch.cm-searchMatch-selected": {
    backgroundColor: `${RED_LIGHT}60`,
  },
  ".cm-line": {
    "& ::selection": {
      backgroundColor: `${RED_LIGHT}40`,
    },
  },
}, { dark: false });

const customLightHighlightStyle = HighlightStyle.define([
  { tag: t.keyword, color: RED_DARK, fontWeight: "bold" },
  { tag: [t.name, t.deleted, t.character, t.propertyName, t.macroName],
    color: BLACK_COLOR },
  { tag: [t.function(t.variableName), t.labelName],
    color: BLACK_SOFT },
  { tag: [t.color, t.constant(t.name), t.standard(t.name)],
    color: RED_COLOR },
  { tag: [t.definition(t.name), t.separator],
    color: BLACK_COLOR },
  { tag: [t.typeName, t.className, t.number, t.changed, t.annotation,
    t.modifier, t.self, t.namespace],
    color: RED_COLOR },
  { tag: [t.operator, t.operatorKeyword, t.url, t.escape, t.regexp,
    t.link, t.special(t.string)],
    color: RED_DARK },
  { tag: [t.meta, t.comment],
    color: GRAY_DARK, fontStyle: "italic" },
  { tag: t.strong,
    fontWeight: "bold", color: BLACK_COLOR },
  { tag: t.emphasis,
    fontStyle: "italic", color: BLACK_SOFT },
  { tag: t.strikethrough,
    textDecoration: "line-through" },
  { tag: t.link,
    color: RED_COLOR, textDecoration: "underline" },
  { tag: t.heading,
    fontWeight: "bold", color: RED_DARK },
  { tag: [t.atom, t.bool, t.special(t.variableName)],
    color: RED_COLOR },
  { tag: [t.processingInstruction, t.string, t.inserted],
    color: BLACK_SOFT },
  { tag: t.invalid,
    color: WHITE_COLOR, backgroundColor: RED_COLOR },
]);

export const lightCodeMirrorTheme: Extension = [
  customLightTheme,
  syntaxHighlighting(customLightHighlightStyle),
];
