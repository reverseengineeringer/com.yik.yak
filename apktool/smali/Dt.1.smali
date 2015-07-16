.class public LDt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/dialog/DraftDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/dialog/DraftDialog;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, LDt;->a:Lcom/yik/yak/ui/dialog/DraftDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, LDt;->a:Lcom/yik/yak/ui/dialog/DraftDialog;

    invoke-virtual {v0}, Lcom/yik/yak/ui/dialog/DraftDialog;->finish()V

    .line 62
    return-void
.end method
