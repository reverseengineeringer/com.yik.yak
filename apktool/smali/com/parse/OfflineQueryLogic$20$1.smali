.class Lcom/parse/OfflineQueryLogic$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineQueryLogic$20;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic$20;)V
    .locals 0

    .prologue
    .line 994
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$20$1;->this$1:Lcom/parse/OfflineQueryLogic$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 997
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$20$1;->this$1:Lcom/parse/OfflineQueryLogic$20;

    iget-object v0, v0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$20$1;->this$1:Lcom/parse/OfflineQueryLogic$20;

    iget-object v1, v1, Lcom/parse/OfflineQueryLogic$20;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
