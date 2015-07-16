.class LED;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LEB;


# direct methods
.method constructor <init>(LEB;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, LED;->a:LEB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, LED;->a:LEB;

    iget-object v0, v0, LEB;->b:Lcom/yik/yak/ui/fragment/DeveloperFragment;

    const-string v1, "resetBasecamp api call failed!"

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/String;)V

    .line 382
    return-void
.end method
