FROM mcr.microsoft.com/dotnet/core/sdk:3.1
COPY start.sh /
RUN chmod +x /start.sh
RUN git clone https://github.com/block-core/blockcore.git
WORKDIR /blockcore/src/Networks/Xds/Xdsd
ENTRYPOINT /start.sh
