CREATE TABLE [dbo].[IntegrationLog] (
    [IntegrationLogId]              BIGINT           IDENTITY (1, 1) NOT NULL,
    [SourceTaskId]          UNIQUEIDENTIFIER NULL,
    [ErrorMessage]    VARCHAR (500)    NULL,
    [IntegrationDate] DATETIME2 (7)    NOT NULL,
    [IsSuccess]       BIT              NULL,
    FOREIGN KEY ([SourceTaskId]) REFERENCES [dbo].[Tasks] ([SourceTaskId])
);
GO
ALTER TABLE [dbo].[IntegrationLog] ADD CONSTRAINT PK_IntegrationLog PRIMARY KEY Clustered (IntegrationLogId, IntegrationDate)
ON IntegrationLogPartitionScheme (IntegrationDate)


GO
CREATE NONCLUSTERED INDEX [IX_ErrorDate]
    ON [dbo].[IntegrationLog]([IntegrationDate] ASC);

