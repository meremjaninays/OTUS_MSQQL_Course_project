CREATE TABLE [dbo].[IntegrationLog] (
    [Id]              BIGINT           IDENTITY (1, 1) NOT NULL,
    [TaskId]          UNIQUEIDENTIFIER NULL,
    [ErrorMessage]    VARCHAR (500)    NULL,
    [IntegrationDate] DATETIME2 (7)    NULL,
    [IsSuccess]       BIT              NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([TaskId]) REFERENCES [dbo].[Tasks] ([SourceSystemId])
);


GO
CREATE NONCLUSTERED INDEX [IX_ErrorDate]
    ON [dbo].[IntegrationLog]([IntegrationDate] ASC);

