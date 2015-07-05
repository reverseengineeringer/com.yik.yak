.class Lcom/amplitude/api/Amplitude$Lib$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/Amplitude$Lib;


# direct methods
.method constructor <init>(Lcom/amplitude/api/Amplitude$Lib;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib$7;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$7;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->clearEndSession()V
    invoke-static {v0}, Lcom/amplitude/api/Amplitude$Lib;->access$2600(Lcom/amplitude/api/Amplitude$Lib;)V

    .line 489
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$7;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0}, Lcom/amplitude/api/Amplitude$Lib;->uploadEvents()V

    .line 490
    return-void
.end method
