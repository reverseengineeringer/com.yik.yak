.class Lcom/amplitude/api/Amplitude$Lib$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/amplitude/api/Amplitude$Lib$10;


# direct methods
.method constructor <init>(Lcom/amplitude/api/Amplitude$Lib$10;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib$10$1;->this$1:Lcom/amplitude/api/Amplitude$Lib$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$10$1;->this$1:Lcom/amplitude/api/Amplitude$Lib$10;

    iget-object v0, v0, Lcom/amplitude/api/Amplitude$Lib$10;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    const/4 v1, 0x0

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->updateServer(Z)V
    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude$Lib;->access$2900(Lcom/amplitude/api/Amplitude$Lib;Z)V

    .line 659
    return-void
.end method
