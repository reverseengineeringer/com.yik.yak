.class public Lcom/parse/PushConnection$StoppedState;
.super Lcom/parse/PushConnection$State;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/parse/PushConnection$StoppedState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0, p1}, Lcom/parse/PushConnection$State;-><init>(Lcom/parse/PushConnection;)V

    return-void
.end method


# virtual methods
.method public isTerminal()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method public runState()Lcom/parse/PushConnection$State;
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return-object v0
.end method
