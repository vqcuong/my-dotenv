"use strict";
module.exports = {
  config: {
    updateChannel: "stable",
    fontSize: 18.5,
    fontFamily: '"Monofur Nerd Font Propo", monospace',
    fontWeight: "normal",
    fontWeightBold: "bold",
    lineHeight: 1,
    letterSpacing: 0,
    cursorColor: "#00ffe5",
    cursorAccentColor: "#000",
    cursorShape: "BLOCK",
    cursorBlink: true,
    foregroundColor: "#00ff55",
    backgroundColor: "rgba(0,0,0,0.6)",
    selectionColor: "#eba7e3",
    borderColor: "rgba(0,0,0,0.0)",
    css: `.splitpane_divider { background-color: cyan !important; }`,
    showHamburgerMenu: "false",
    showWindowControls: "false",
    padding: "0px 0px 0px 0px",
    colors: {
      black: "#000000",
      red: "#ff3d5a",
      green: "#00f7ff",
      yellow: "#C7C329",
      blue: "#0095E0",
      magenta: "#fff426",
      cyan: "#26fff4",
      white: "#ffffff",
      lightBlack: "#777777",
      lightRed: "#ff0000",
      lightGreen: "#67F86F",
      lightYellow: "#FFFA72",
      lightBlue: "#00d0ff",
      lightMagenta: "#FD7CFC",
      lightCyan: "#68FDFE",
      lightWhite: "#FFFFFF",
      limeGreen: "#32CD32",
      lightCoral: "#ff94bf",
    },
    shell: "/bin/zsh",
    // shellArgs: ["--login"],
    shellArgs: ["-l", "-c", "tmux attach || tmux new-session -s cuongok -n hiworld"],
    env: {},
    bell: "SOUND",
    copyOnSelect: true,
    defaultSSHApp: true,
    quickEdit: false,
    macOptionSelectionMode: "vertical",
    webGLRenderer: true,
    webLinksActivationKey: "",
    disableLigatures: true,
    disableAutoUpdates: false,
    screenReaderMode: false,
    preserveCWD: true,
    modifierKeys: {
      altIsMeta: true,
    },
    hyperBorder: {
      animate: true,
      borderColors: ["#fc1da7", "#fba506"],
      borderWidth: "10px",
    },
    // opacity: 0.30,
  },
  plugins: [
    "hyperpower",
    "hyper-letters",
    "hyperborder",
    "hyperminimal",
    "dracula",
    // "hyper-bloodbath",
    // "hyper-opacity",
    // "hyper-transparent",
    // "hyper-background",
    "hyper-save-windowstate",
    // "hyperlinks"
  ],
  localPlugins: [],
  keymaps: {
    "pane:splitRight": "ctrl+x",
    "pane:splitDown": "ctrl+q",
  },
};
