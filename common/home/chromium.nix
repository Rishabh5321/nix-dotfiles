{
  programs.chromium = {
    enable = false;
    commandLineArgs = [ "--enable-features=TouchpadOverscrollHistoryNavigation" ];
    extensions = [
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; }
      { id = "bkkmolkhemgaeaeggcmfbghljjjoofoh"; }
    ];
  };
}
