.class Lcom/amplitude/api/AmplitudeClient$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$5;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$5;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->clearEndSession()V

    .line 491
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$5;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->uploadEvents()V

    .line 492
    return-void
.end method
