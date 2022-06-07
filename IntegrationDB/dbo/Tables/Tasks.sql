CREATE TABLE [dbo].[Tasks] (
    [SourceSystemId]  UNIQUEIDENTIFIER NOT NULL,
    [TargetSystemId]  BIGINT           NULL,
    [IntegrationDate] DATETIME2 (7)    NULL,
    PRIMARY KEY CLUSTERED ([SourceSystemId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_SourceSystemId]
    ON [dbo].[Tasks]([SourceSystemId] ASC)
    INCLUDE([TargetSystemId]);

