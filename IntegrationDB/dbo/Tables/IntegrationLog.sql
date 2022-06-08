CREATE TABLE [dbo].[IntegrationLog] (
    [IntegrationLogId]              BIGINT           IDENTITY (1, 1) NOT NULL,
    [SourceObjectId]          UNIQUEIDENTIFIER NULL,
    [ErrorMessage]    VARCHAR (500)    NULL,
    [IntegrationDate] DATETIME2 (7)    NULL,
    [IsSuccess]       BIT              NULL,
    PRIMARY KEY CLUSTERED ([IntegrationLogId] ASC),
    FOREIGN KEY ([SourceObjectId]) REFERENCES [dbo].[Tasks] ([SourceObjectId])
);


GO
CREATE NONCLUSTERED INDEX [IX_ErrorDate]
    ON [dbo].[IntegrationLog]([IntegrationDate] ASC);

