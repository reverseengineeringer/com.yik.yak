.class public LCW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkn;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, LCW;->a:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, LCW;->a:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;

    # invokes: Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->launchMapActivity()V
    invoke-static {v0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->access$000(Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;)V

    .line 143
    return-void
.end method
